<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Pymaster - Career Portal</title>
  <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
  <script src="https://cdn.tailwindcss.com"></script>
  <style>
    body {
      background: linear-gradient(to bottom right, #e0f2ff, #f0faff);
    }
  </style>
</head>
<body class="min-h-screen flex items-center justify-center text-gray-800">
  <div id="app" class="w-full max-w-2xl p-6 rounded-xl shadow-xl bg-white border border-blue-100">

    <!-- Home Page -->
    <div id="homePage" class="text-center">
      <h1 class="text-4xl font-bold mb-6 text-blue-700">Pymaster</h1>
      <input id="searchInput" type="text" placeholder="Search internships or jobs..." class="w-full border-2 border-blue-200 rounded-lg p-3 mb-6 focus:outline-none focus:ring-2 focus:ring-blue-300" />
      <div class="flex flex-col sm:flex-row justify-center gap-4">
        <button id="btnInternship" class="bg-blue-500 hover:bg-blue-600 text-white px-6 py-2 rounded-lg transition-all">Search Internship</button>
        <button id="btnJob" class="bg-blue-500 hover:bg-blue-600 text-white px-6 py-2 rounded-lg transition-all">Search Job</button>
      </div>
    </div>

    <!-- Form Page -->
    <div id="formPage" class="hidden mt-6">
      <h2 class="text-2xl font-semibold mb-4 text-blue-800">Enquiry Form</h2>
      <form id="enquiryForm" class="space-y-4">
        <div>
          <label class="block text-sm font-semibold mb-1">Enquiry</label>
          <input id="enquiry" name="enquiry" type="text" readonly class="w-full border-2 border-blue-100 rounded-lg p-2 bg-blue-50 text-gray-700" />
        </div>
        <div>
          <label class="block text-sm font-semibold mb-1">Query</label>
          <textarea id="query" name="query" class="w-full border-2 border-blue-100 rounded-lg p-2" rows="2" placeholder="Write your query here..."></textarea>
        </div>
        <div>
          <label class="block text-sm font-semibold mb-1">About Me</label>
          <textarea id="about" name="about" class="w-full border-2 border-blue-100 rounded-lg p-2" rows="2" placeholder="Tell us about yourself..."></textarea>
        </div>
        <div>
          <label class="block text-sm font-semibold mb-1">Email</label>
          <input id="email" name="email" type="email" class="w-full border-2 border-blue-100 rounded-lg p-2" placeholder="you@example.com" />
        </div>
        <div>
          <label class="block text-sm font-semibold mb-1">Phone</label>
          <input id="phone" name="phone" type="tel" class="w-full border-2 border-blue-100 rounded-lg p-2" placeholder="1234567890" />
        </div>
        <div class="flex justify-between pt-4 gap-4">
          <button type="button" id="clearBtn" class="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-lg w-1/2 transition-all">Clear</button>
          <button type="submit" id="submitBtn" class="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-lg w-1/2 transition-all">Submit</button>
        </div>
      </form>
    </div>
  </div>

  <script>
    $(document).ready(function () {
      function showForm(type) {
        const searchText = $('#searchInput').val().trim();
        $('#enquiry').val(`${type}: ${searchText}`);
        $('#homePage').hide();
        $('#formPage').removeClass('hidden');
      }

      $('#btnInternship').on('click', function () {
        showForm('Internship');
      });

      $('#btnJob').on('click', function () {
        showForm('Job');
      });

      $('#clearBtn').on('click', function () {
        $('#query, #about, #email, #phone').val('');
      });

      $('#enquiryForm').on('submit', function (e) {
        e.preventDefault();
        const formData = {
          enquiry: $('#enquiry').val(),
          query: $('#query').val(),
          about: $('#about').val(),
          email: $('#email').val(),
          phone: $('#phone').val()
        };

        console.log("Submitted Data:", formData);
        alert('Form submitted successfully!');
        $('#formPage').addClass('hidden');
        $('#homePage').show();
        $('#enquiryForm')[0].reset();
      });
    });
  </script>
</body>
</html>
