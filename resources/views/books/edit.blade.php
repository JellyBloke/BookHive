@extends('layouts.master')
@section('title', $book->title)

@section('content')
    <div class="d-flex flex-column p-4 gap-3">
        <h2>Edit Book</h2>

        @include('partial.danger-alert')
        <form method="POST" action="{{ route('books.update', $book) }}" class="card card-body p-4 pt-3">
            @csrf
            @method('PUT')

            <div class="d-flex flex-column gap-4">
                <div class="d-flex flex-column gap-3">
                    <div>
                        <label class="form-label" for="title">Title</label>
                        <input name="title" class="form-control @error('nim') is-invalid @enderror" id="title" value="{{ $book->title }}">
                        @error('title')
                            <div class="invalid-feedback" role="alert">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div>
                        <label class="form-label" for="author_name">Author</label>
                        <select name="author_name" class="form-control @error('author_name') is-invalid @enderror" id="author_name">
                            @foreach ($authors as $author)
                                <option value="{{ $author->id }}" {{ $book->author_id == $author->id ? 'selected' : '' }}>
                                    {{ $author->name }}
                                </option>
                            @endforeach
                        </select>
                        @error('author_name')
                            <div class="invalid-feedback" role="alert">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div>
                        <label class="form-label" for="category_name">Category</label>
                        <select name="category_name" class="form-control @error('category_name') is-invalid @enderror" id="category_name">
                            @foreach ($categories as $category)
                                <option value="{{ $category->id }}" {{ $book->category_id == $category->id ? 'selected' : '' }}>
                                    {{ $category->name }}
                                </option>
                            @endforeach
                        </select>
                        @error('category_name')
                            <div class="invalid-feedback" role="alert">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div>
                        <label class="form-label" for="stock">Stock</label>
                        <input name="stock" type="number" class="form-control @error('stock') is-invalid @enderror" id="stock" value="{{ $book->stock }}" min="0">
                        @error('stock')
                            <div class="invalid-feedback" role="alert">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>

                <div class="d-flex justify-content-center gap-3">
                    <button type="submit" class="btn btn-warning" style="width: 7rem; max-width: 100%;">Update</button>
                    <a href="{{ route('books.index') }}" class="btn btn-secondary" style="width: 7rem; max-width: 100%;">Cancel</a>
                </div>
            </div>
        </form>
    </div>
@endsection