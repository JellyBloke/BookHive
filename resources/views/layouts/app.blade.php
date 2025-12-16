<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>BookHive</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">


<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
<div class="container">
<a class="navbar-brand" href="{{ route('books.index') }}">📚 BookHive</a>
</div>
</nav>


<div class="container">
@if(session('success'))
<div class="alert alert-success">{{ session('success') }}</div>
@endif


@yield('content')
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>