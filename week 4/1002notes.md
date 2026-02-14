Presentation layer (UI) Front End
Business Layer (Logic Layer) Client and app logic
Data Layer (Persistecnce Layer) Stores and retrieves data

Static project vs data project 

API integration project: needs configs/secrets for external APIs


/project 
    /assets
    /static
        /css
        /js
            /simulation.js
            /ui.js
            /main.js
    /templates
        index.html


server.js 
package.json 
.env (secrets API keys)

API: Application Programming Interface 

Many APIs use JSON messages 


External and internal APIs 



async function fetchData(url) {
  try {
    // Await the fetch call to get the Response object
    const response = await fetch(url);

    // Check if the response status is OK (200-299 range)
    if (!response.ok) {
      const message = `An error occurred: ${response.status}`;
      throw new Error(message);
    }

    // Await the response body parsing (e.g., as JSON)
    const data = await response.json();

    console.log(data); // The parsed JavaScript object/data
    return data;
  } catch (error) {
    // This catches network errors or the error thrown above
    console.error("Fetch error:", error.message);
  }
}

// Call the async function
fetchData('https://api.example.com/data');


Promise object:  represents the eventual completion or failure of an asynchronous operation and its resulting value

import request 

responses = requests.get('url.com')

print(response.json())