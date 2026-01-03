@extends('layouts.master')
@section('title', 'Add New Book')

@section('content')
    <div class="d-flex flex-column p-4 gap-3">
        <h2>Add New Book</h2>

        @include('partial.success-alert')
        <form method="POST" action="{{ route('books.store') }}" class="card card-body p-4 pt-3">
            @csrf

            <div class="d-flex flex-column gap-4">
                <div class="d-flex flex-column gap-3">
                    <div>
                        <label class="form-label" for="title">Title</label>
                        <input name="title" class="form-control  @error('title') is-invalid @enderror" id="title" value="{{ old('title') }}">
                        @error('title')
                            <div class="invalid-feedback" role="alert">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div>
                        <label class="form-label" for="author_name">Author</label>
                        <input name="author_name" class="form-control @error('author_name') is-invalid @enderror" id="author_name" value="{{ old('author_name') }}">
                        @error('author_name')
                            <div class="invalid-feedback" role="alert">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div>
                        <label class="form-label" for="category_name">Category</label>
                        <input name="category_name" class="form-control @error('category_name') is-invalid @enderror" id="category_name" value="{{ old('category_name') }}">
                        @error('category_name')
                            <div class="invalid-feedback" role="alert">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div>
                        <label class="form-label" for="stock">Stock</label>
                        <input name="stock" type="number" class="form-control @error('stock') is-invalid @enderror" id="stock" value="{{ old('stock') }}" min="1">
                        @error('stock')
                            <div class="invalid-feedback" role="alert">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>

                <div class="d-flex justify-content-center gap-3">
                    <button type="submit" class="btn btn-success" style="width: 7rem; max-width: 100%;">Save</button>
                    <a href="{{ route('books.index') }}" class="btn btn-secondary" style="width: 7rem; max-width: 100%;">Cancel</a>
                </div>
            </div>
        </form>
    </div>
@endsection