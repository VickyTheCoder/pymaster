<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Sample</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-white flex items-center justify-center min-h-screen">

  <!-- Home Section -->
  <div id="homeWrapper" class="text-center">
    <h1 class="text-7xl text-blue-500 font-bold tracking-tight mb-6">Welcome</h1>
    
    <div class="mt-4">
      <input
        type="text"
        placeholder="Search"
        class="w-[500px] px-5 py-3 border border-gray-300 rounded-full shadow focus:outline-none focus:ring-1 focus:ring-blue-500"
      />
    </div>

    <div class="mt-6">
      <button onclick="showForm()" class="bg-gray-100 text-sm text-gray-700 px-4 py-2 rounded-full hover:shadow hover:border-gray-300 mx-2">
         Search For Internship
      </button>
      <button onclick="showForm()" class="bg-gray-100 text-sm text-gray-700 px-4 py-2 rounded-full hover:shadow hover:border-gray-300 mx-2">
        Looking For Job
      </button>
    </div>
  </div>

  <!-- Form Section -->
  <div id="formWrapper" class="hidden flex justify-center items-center min-h-screen bg-gray-100 px-4">
    <div class="bg-white w-full max-w-md p-6 rounded-xl shadow-md">
      <form id="inquiryForm">
        <!-- Inquiry -->
        <label for="inquiry" class="block mt-2 font-bold text-gray-700">Inquiry:</label>
        <input type="text" id="inquiry" name="inquiry" placeholder="Enter your inquiry"
          class="w-full p-2 mt-1 bg-blue-100 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-blue-300 focus:bg-white" />
  
        <!-- Query -->
        <label for="query" class="block mt-4 font-bold text-gray-700">Query:</label>
        <input type="text" id="query" name="query" placeholder="Enter your query"
          class="w-full p-2 mt-1 bg-blue-100 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-blue-300 focus:bg-white" />
  
        <!-- About Me -->
        <label for="aboutMe" class="block mt-4 font-bold text-gray-700">About Me:</label>
        <textarea id="aboutMe" name="aboutMe" rows="4" placeholder="Write something about yourself"
          class="w-full p-2 mt-1 bg-blue-100 border border-gray-300 rounded resize-y focus:outline-none focus:ring-2 focus:ring-blue-300 focus:bg-white"></textarea>
  
        <!-- Email -->
        <label for="email" class="block mt-4 font-bold text-gray-700">Email:</label>
        <input type="email" id="email" name="email" placeholder="your@email.com"
          class="w-full p-2 mt-1 bg-blue-100 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-blue-300 focus:bg-white" />
  
        <!-- Phone -->
        <label for="phone" class="block mt-4 font-bold text-gray-700">Phone:</label>
        <input type="tel" id="phone" name="phone" placeholder="123-456-7890"
          class="w-full p-2 mt-1 bg-blue-100 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-blue-300 focus:bg-white" />
  
        <!-- Buttons -->
        <div class="mt-6 flex flex-col sm:flex-row sm:space-x-4 space-y-2 sm:space-y-0">
          <button type="reset"
            class="w-full sm:w-auto px-4 py-2 bg-white border border-gray-300 rounded hover:bg-blue-200 transition">Clear</button>
          <button type="submit"
            class="w-full sm:w-auto px-4 py-2 bg-white border border-gray-300 rounded hover:bg-blue-200 transition">Submit</button>
        </div>
      </form>
    </div>
  </div>

  <!-- Script -->
  <script>
    function showForm() {
      document.getElementById("homeWrapper").classList.add("hidden");
      document.getElementById("formWrapper").classList.remove("hidden");
    }
  </script>

</body>
</html>
