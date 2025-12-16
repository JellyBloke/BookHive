    @extends('layouts.app')
    @section('content')
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2>Book List</h2>
        <a href="{{ route('books.create') }}" class="btn btn-primary">+ Add Book</a>
    </div>


    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>Title</th>
                <th>Author</th>
                <th>Category</th>
                <th>Stock</th>
                <th width="220">Actions</th>
            </tr>
        </thead>

        <tbody>
            @foreach($books as $book)
            <tr>
                <td>{{ $book->title }}</td>
                <td>{{ $book->author->name ?? '-' }}</td>
                <td>{{ $book->category->name ?? '-' }}</td>
                <td>
                    <span class="badge {{ $book->stock > 0 ? 'bg-success' : 'bg-danger' }}">
                        {{ $book->stock }}
                    </span>
                </td>
            <td>
                <a href="{{ route('books.show', $book) }}" class="btn btn-info btn-sm">View</a>
                <a href="{{ route('books.edit', $book) }}" class="btn btn-warning btn-sm">Edit</a>
                <form action="{{ route('books.destroy', $book) }}" method="POST" class="d-inline">
                    @csrf @method('DELETE')
                    <button class="btn btn-danger btn-sm" onclick="return confirm('Delete this book?')">Delete</button>
                </form>
            </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    @endsection