    @extends('layouts.app')
    @section('content')
    <div class="card">
        <div class="card-body">
            <h3>{{ $book->title }}</h3>
            <p><strong>Author:</strong> {{ $book->author }}</p>
            <p><strong>Category:</strong> {{ $book->category }}</p>
            <p><strong>Stock:</strong> {{ $book->stock }}</p>
            <a href="{{ route('books.index') }}" class="btn btn-secondary">Back</a>
        </div>
    </div>
    @endsection