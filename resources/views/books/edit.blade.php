@extends('layouts.master')
@section('title', $book->title)

@section('content')
    <div class="d-flex flex-column p-4 gap-3">
        <h2 class="m-0 fw-semibold fs-2">Edit Book</h2>

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
                        <input name="author_name" class="form-control @error('author_name') is-invalid @enderror" id="author_name" value="{{ $book->author->name }}">
                        @error('author_name')
                            <div class="invalid-feedback" role="alert">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div>
                        <label class="form-label" for="category">Category</label>
                        <select class="form-control @error('category') is-invalid @enderror" name="category" id="category">
                            <option value="" disabled selected hidden>-- Choose Category --</option>
                            @foreach ($categories as $category)
                            <option value="{{ $category->id }}" {{ $book->category_id == $category->id ? 'selected' : '' }}>
                                {{ $category->name }}
                            </option>
                            @endforeach
                        </select>
                        @error('category')
                            <div class="invalid-feedback" role='alert'>
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