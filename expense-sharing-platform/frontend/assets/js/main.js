// Main JavaScript for the Expense Sharing Platform

document.addEventListener('DOMContentLoaded', function() {
    // Setup event listeners
    setupEventListeners();
    
    // Display sample data
    displaySampleData();
});

// Setup event listeners for UI interactions
function setupEventListeners() {
    // Auth buttons
    const loginButton = document.getElementById('login-button');
    const registerButton = document.getElementById('register-button');
    const getStartedButton = document.getElementById('get-started-button');
    
    if (loginButton) {
        loginButton.addEventListener('click', function() {
            alert('Login functionality would be implemented here.');
        });
    }
    
    if (registerButton) {
        registerButton.addEventListener('click', function() {
            alert('Registration functionality would be implemented here.');
        });
    }
    
    if (getStartedButton) {
        getStartedButton.addEventListener('click', function() {
            alert('Get started functionality would be implemented here.');
        });
    }
    
    // Search form
    const searchForm = document.getElementById('search-form');
    if (searchForm) {
        searchForm.addEventListener('submit', function(e) {
            e.preventDefault();
            
            const query = document.getElementById('search-query').value;
            const category = document.getElementById('search-category').value;
            const location = document.getElementById('search-location').value;
            
            alert(`Search submitted with: Query: ${query}, Category: ${category}, Location: ${location}`);
        });
    }
    
    // Resource card buttons
    const viewButtons = document.querySelectorAll('.resource-actions button');
    viewButtons.forEach(button => {
        button.addEventListener('click', function() {
            alert('Resource details would be shown here.');
        });
    });
}

// Display sample data
function displaySampleData() {
    console.log('Sample data loaded');
}
