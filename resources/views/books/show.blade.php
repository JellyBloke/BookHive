@extends('layouts.master')
@section('title', $book->title)

@section('content')
    <div class="d-flex flex-column p-4 gap-4">
        @include('partial.success-alert')
        @include('partial.danger-alert')

        <div class="card">
            <div class="card-body p-4 pt-3 d-flex flex-column gap-3">
                <h3 class="m-0">{{ $book->title }}</h3>

                <div><strong>Author:</strong> {{ $book->author->name }}</div>
                <div><strong>Category:</strong> {{ $book->category->name }}</div>
                <div>
                    <strong>Stock:</strong>
                    <span class="badge {{ $book->stock > 0 ? 'bg-success' : 'bg-danger' }}">
                        {{ $book->stock }}
                    </span>
                </div>

                <a href="{{ route('books.index') }}" class="btn btn-secondary">Back</a>
            </div>
        </div>

        <div class="card">
            <div class="card-body p-4 pt-3 d-flex flex-column gap-3">
                <h5 class="m-0">Borrow Book</h5>

                @if ($book->stock > 0)
                    <form method="POST" action="{{ route('books.borrow', $book) }}">
                        @csrf

                        <div class="input-group">
                            <input name="borrower_name" class="form-control @error('borrower_name') is-invalid @enderror" id="borrower_name" placeholder="Borrower Name">
                            <button class="btn btn-primary">Borrow</button>
                            @error('borrower_name')
                                <div class="invalid-feedback" role="alert">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                    </form>
                @else
                    <div class="alert alert-danger m-0">
                        The book is out of stock.
                    </div>
                @endif
            </div>
        </div>

        <div class="card">
            <div class="card-body p-4 pt-3 d-flex flex-column gap-3">
                <h5 class="m-0">Borrow History</h5>

                @if ($book->borrowings->count())
                    <div class="table-responsive">
                        <table class="table align-middle">
                            <thead>
                                <tr>
                                    <th>Borrower</th>
                                    <th>Borrowed At</th>
                                    <th>Returned At</th>
                                    <th style="width: 1%; white-space: nowrap;">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($book->borrowings as $borrow)
                                    <tr>
                                        <td>{{ $borrow->borrower_name }}</td>
                                        <td>{{ $borrow->borrowed_at }}</td>
                                        <td>{{ $borrow->returned_at ?? '-' }}</td>
                                        <td>
                                            <div class="d-flex justify-content-center">
                                                @if (!$borrow->returned_at)
                                                    <form method="POST" action="{{ route('borrowings.return', $borrow) }}">
                                                        @csrf

                                                        <button class="btn btn-success btn-sm" style="width: 4rem; max-width: 100%;">Return</button>
                                                    </form>
                                                @endif
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                @else
                    <div class="text-muted">No borrow history.</div>
                @endif
            </div>
        </div>
    </div>
@endsection