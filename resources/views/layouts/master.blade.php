<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>@yield('title') | BookHive</title>
        @include('layouts.bootstrap')
        <link rel="icon" type="image/svg+xml" href="data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22 viewBox=%220 0 100 100%22><text y=%22.9em%22 font-size=%2290%22>📚</text></svg>">
    </head>
    <body class="bg-light d-flex flex-column min-vh-100" style="overflow-x: hidden;">
        @include('layouts.header')
        
        <main class="flex-grow-1 d-flex flex-column">
            @yield('content')
        </main>
    </body>
</html>