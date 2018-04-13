Trying to figure out how routes that are linked in html pages are served to the browser.

Site structure:
    routes are on the wiki.rb page
    helper function to get text from a file is in test.rb
    pages/charlie.txt is not being used anywhere
    pages/charlie.html is being served via the get "/html/:name" route
    styles/styles.css is being served via the get "/static/*" route
