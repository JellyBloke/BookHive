    @extends('layouts.app')

    @section('content')

    <div class="card mb-3">
        <div class="card-body">
            <h3>{{ $book->title }}</h3>

            <p><strong>Author:</strong> {{ $book->author->name ?? '-' }}</p>
            <p><strong>Category:</strong> {{ $book->category->name ?? '-' }}</p>

            <p>
                <strong>Stock:</strong>
                <span class="badge {{ $book->stock > 0 ? 'bg-success' : 'bg-danger' }}">
                    {{ $book->stock }}
                </span>
            </p>

            <a href="{{ route('books.index') }}" class="btn btn-secondary">Back</a>
        </div>
    </div>

    <div class="card mb-3">
        <div class="card-body">
            <h5>Borrow Book</h5>

            @if ($book->stock > 0)
                <form method="POST" action="{{ route('books.borrow', $book) }}">
                    @csrf

                    <div class="input-group">
                        <input
                            name="borrower_name"
                            class="form-control"
                            placeholder="Borrower name"
                            required
                        >
                        <button class="btn btn-primary">Borrow</button>
                    </div>
                </form>
            @else
                <div class="alert alert-danger mt-2">
                    Book is out of stock
                </div>
            @endif
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <h5>Borrow History</h5>

            @if ($book->borrowings->count())
                <table class="table table-sm">
                    <thead>
                        <tr>
                            <th>Borrower</th>
                            <th>Borrowed At</th>
                            <th>Returned At</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($book->borrowings as $borrow)
                            <tr>
                                <td>{{ $borrow->borrower_name }}</td>
                                <td>{{ $borrow->borrowed_at }}</td>
                                <td>{{ $borrow->returned_at ?? '-' }}</td>
                                <td>
                                    @if (!$borrow->returned_at)
                                        <form
                                            method="POST"
                                            action="{{ route('borrowings.return', $borrow) }}"
                                        >
                                            @csrf
                                            <button class="btn btn-success btn-sm">
                                                Return
                                            </button>
                                        </form>
                                    @endif
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            @else
                <p class="text-muted">No borrow history.</p>
            @endif
        </div>
    </div>

    @endsection
