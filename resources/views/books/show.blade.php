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

                @auth
                <div>
                    @if (auth()->user()->wishlistBooks->contains($book->id))
                        <form method="POST" action="{{ route('wishlist.remove', $book) }}">
                            @csrf
                            @method('DELETE')
                            <button class="btn btn-outline-danger">
                                ❌ Remove from Wishlist
                            </button>
                        </form>
                    @else
                        <form method="POST" action="{{ route('wishlist.add', $book) }}">
                            @csrf
                            <button class="btn btn-outline-primary">
                                ❤️ Add to Wishlist
                            </button>
                        </form>
                    @endif
                </div>
                    @else
                        <div class="alert alert-info m-0">
                            Login to add this book to your wishlist.
                        </div>
                @endauth



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

        <div class="card">
        <div class="card-body p-4 pt-3 d-flex flex-column gap-3">
            <h5 class="m-0">Reviews</h5>

            {{-- Review form --}}
            @auth
                <form method="POST" action="{{ route('books.review', $book) }}">
                    @csrf

                    <div class="row g-2 align-items-end">
                        <div class="col-md-2">
                            <label class="form-label">Rating</label>
                            <select name="rating" class="form-select" required>
                                <option value="">Select</option>
                                @for ($i = 1; $i <= 5; $i++)
                                    <option value="{{ $i }}">{{ $i }} ⭐</option>
                                @endfor
                            </select>
                        </div>

                        <div class="col-md-8">
                            <label class="form-label">Comment</label>
                            <textarea name="comment" class="form-control" placeholder="Write your review..."></textarea>
                        </div>

                        <div class="col-md-2">
                            <button class="btn btn-primary w-100">Submit</button>
                        </div>
                    </div>
                </form>
            @else
                <div class="alert alert-info m-0">
                    Login to write a review.
                </div>
            @endauth

            <hr>

            {{-- Review list --}}
            @if ($book->reviews->count())
                <div class="d-flex flex-column gap-3">
                    @foreach ($book->reviews as $review)
                        <div class="border rounded p-3">
                            <div class="d-flex justify-content-between">
                                <strong>{{ $review->user->name }}</strong>
                                <span class="text-warning">
                                    {{ str_repeat('⭐', $review->rating) }}
                                </span>
                            </div>
                            @if ($review->comment)
                                <p class="mb-0 mt-2">{{ $review->comment }}</p>
                            @endif
                        </div>
                    @endforeach
                </div>
            @else
                <div class="text-muted">No reviews yet.</div>
            @endif
            </div>
        </div>
    </div>
@endsection