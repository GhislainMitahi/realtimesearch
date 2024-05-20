document.addEventListener("DOMContentLoaded", () => {
    const inputField = document.getElementById("searchInput");
    const resultsDiv = document.getElementById("searchResults");

    // Improved debounce function to handle completion of typing more effectively
    function debounce(func, delay) {
        let debounceTimer;
        return function() {
            const context = this;
            const args = arguments;
            clearTimeout(debounceTimer);
            debounceTimer = setTimeout(() => func.apply(context, args), delay);
        };
    }

    // Event listener with refined logic
    inputField.addEventListener("input", debounce(function() {
        const searchText = this.value.trim();
        if (searchText.length > 2) { // Consider increasing to 3 if needed
            // Use a more robust fetch with error handling and conditional display
            fetch(`/search?query=${encodeURIComponent(searchText)}`)
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Network response was not ok');
                    }
                    return response.json();
                })
                .then(data => {
                    displayResults(data);
                })
                .catch(error => {
                    console.error('Error fetching data:', error);
                    resultsDiv.innerHTML = '<div>Failed to load results.</div>'; // Provide user feedback on failure
                });
        } else {
            resultsDiv.innerHTML = ''; // Clear results if not enough characters
        }
    }, 1000)); // Increased debounce time to ensure user has stopped typing

    // Function to display results
    function displayResults(results) {
        resultsDiv.innerHTML = ''; // Clear previous results first
        if (results.length > 0) {
            results.forEach(result => {
                const element = document.createElement('div');
                element.textContent = result.title; // Assuming result objects have a 'title' property
                resultsDiv.appendChild(element);
            });
        } else {
            resultsDiv.innerHTML = '<div>No results found.</div>'; // Handle no results scenario
        }
    }
});