<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="layout" content="main" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Management</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.0.3/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 text-gray-900">

<!-- Header -->
<header class="bg-blue-600 text-white p-4 shadow-md">
    <div class="container mx-auto flex justify-between items-center">
        <h1 class="text-2xl font-bold">Student Management</h1>
        <nav>
            <ul class="flex space-x-4">
                <li><a href="/" class="text-white hover:text-gray-200">Home</a></li>
            </ul>
        </nav>
    </div>
</header>

<!-- Main content -->
<div class="container mx-auto my-8 p-4">
    <div class="bg-white shadow-md rounded-lg p-6">
        <div class="flex justify-between items-center mb-6">
            <h2 class="text-xl font-semibold">Student List</h2>
            <g:link class="bg-green-600 text-white px-4 py-2 rounded-md hover:bg-green-700 transition" action="create">
                Create Student
            </g:link>
        </div>

        <f:table collection="${studentList}" properties="['firstName', 'lastName']" class="w-full table-auto border-collapse">
            <thead>
            <tr class="bg-gray-100">
                <th class="py-2 px-4 text-left">First Name</th>
                <th class="py-2 px-4 text-left">Last Name</th>
            </tr>
            </thead>
            <tbody>
            <!-- Dynamic student data will be inserted here -->
            </tbody>
        </f:table>
    </div>
</div>
<footer class="bg-gray-800 text-white p-4 mt-8">
    <div class="container mx-auto text-center">
        <p>&copy; 2024 Student Management App</p>
    </div>
</footer>
</body>
</html>