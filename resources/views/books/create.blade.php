    @extends('layouts.app')
    @section('content')
    <h2>Add New Book</h2>


    <form method="POST" action="{{ route('books.store') }}" class="card card-body">
        @csrf


        <div class="mb-3">
            <label class="form-label">Title</label>
            <input name="title" class="form-control" required>
        </div>


        <div class="mb-3">
            <label class="form-label">Author</label>
            <input name="author" class="form-control" required>
        </div>


        <div class="mb-3">
            <label class="form-label">Category</label>
            <input name="category" class="form-control" required>
        </div>


        <div class="mb-3">
            <label class="form-label">Stock</label>
            <input name="stock" type="number" class="form-control" min="0" required>
        </div>


        <button class="btn btn-success">Save</button>
        <a href="{{ route('books.index') }}" class="btn btn-secondary">Cancel</a>
    </form>
    @endsection