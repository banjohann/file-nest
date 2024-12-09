<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="layout" content="main" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.0.3/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 text-gray-900">

<div class="nav" role="navigation">
    <ul class="flex space-x-4 p-4 bg-blue-600">
        <li>
            <g:link class="text-white bg-blue-500 px-6 py-2 rounded-md hover:bg-blue-600 transition" action="index">Students List</g:link>
        </li>
    </ul>
</div>

<div id="show-student" class="content scaffold-show" role="main">
    <div class="bg-white shadow-md rounded-lg p-6">
        <h2 class="text-2xl font-semibold mb-4">Student Profile</h2>

        <div class="mb-4">
            <h3 class="font-semibold">Profile Picture</h3>
            <img src="${student.profilePicture}" alt="Profile Picture" class="w-32 h-32 object-cover rounded-full">
        </div>

        <div class="mb-4">
            <p><strong>First Name:</strong> ${student.firstName}</p>
            <p><strong>Last Name:</strong> ${student.lastName}</p>
        </div>

        <g:form resource="${student}" method="DELETE">
            <fieldset class="buttons">
                <button class="delete bg-red-600 text-white px-6 py-3 rounded-md hover:bg-red-700 transition focus:outline-none focus:ring-2 focus:ring-red-500 focus:ring-opacity-50" type="submit"> Delete </button>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>