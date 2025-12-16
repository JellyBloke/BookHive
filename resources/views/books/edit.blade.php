    @extends('layouts.app')
    @section('content')
    <h2>Edit Book</h2>


    <form method="POST" action="{{ route('books.update', $book) }}" class="card card-body">
        @csrf @method('PUT')


        <div class="mb-3">
            <label class="form-label">Title</label>
            <input name="title" class="form-control" value="{{ $book->title }}" required>
        </div>


        <div class="mb-3">
            <label class="form-label">Author</label>
            <input name="author" class="form-control" value="{{ $book->author }}" required>
        </div>


        <div class="mb-3">
            <label class="form-label">Category</label>
            <input name="category" class="form-control" value="{{ $book->category }}" required>
        </div>


        <div class="mb-3">
            <label class="form-label">Stock</label>
            <input name="stock" type="number" class="form-control" value="{{ $book->stock }}" min="0" required>
        </div>


        <button class="btn btn-warning">Update</button>
        <a href="{{ route('books.index') }}" class="btn btn-secondary">Cancel</a>
    </form>
    @endsection