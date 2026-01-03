@extends('layouts.master')
@section('title', 'Book List')

@section('content')
    <div class="d-flex flex-column p-4 gap-3">
        <div class="d-flex justify-content-between">
            <h2 class="m-0">Book List</h2>
            <a href="{{ route('books.create') }}" class="btn btn-primary align-self-end" style="width: 7rem; max-width: 100%;">+ Add Book</a>
        </div>

        <div class="table-responsive">
            <table class="table table-bordered table-striped align-middle">
                <thead class="table-dark">
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Category</th>
                        <th>Stock</th>
                        <th style="width: 1%; white-space: nowrap;">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($books as $book)
                        <tr>
                            <td>{{ $book->title }}</td>
                            <td>{{ $book->author->name }}</td>
                            <td>{{ $book->category->name }}</td>
                            <td>
                                <div class="d-flex justify-content-center">
                                    <span class="badge {{ $book->stock > 0 ? 'bg-success' : 'bg-danger' }}">
                                        {{ $book->stock }}
                                    </span>
                                </div>
                                
                            </td>
                            <td>
                                <div class="d-flex justify-content-center gap-2">
                                    <a href="{{ route('books.show', $book) }}" class="btn btn-info btn-sm" style="width: 4rem; max-width: 100%;">View</a>
                                    <a href="{{ route('books.edit', $book) }}" class="btn btn-warning btn-sm" style="width: 4rem; max-width: 100%;">Edit</a>
                                    <form action="{{ route('books.destroy', $book) }}" method="POST" class="d-inline">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger btn-sm" style="width: 4rem; max-width: 100%;" onclick="return confirm('Are you sure you want to delete this book?')">Delete</button>
                                    </form>
                                </div>
                                
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection