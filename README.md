#Recipe Box

####Version 1.0, 26 August 2015
By Alexa Zeazas & Jennifer Bell

###Description
This app allows the user to add and organize their favorite recipes.

_Goals for future updates_
* _Add search function for users to search by category and ingrediates._
* _Allow users to update their existing recipes._
* _Fix duplicate ojects bug._

###Setup
1. Clone the repo by typing **git clone https://github.com/azeazas/recipe_box.git** into the terminal.
2. To bundle the gems, type **bundle** into the terminal.
3. To create the database, type **rake db:create** into the terminal.
4. To create the tables in the database, type **rake db:migrate** into the terminal.
5. To create the test database, type **rake db:test:prepare** into the terminal.
6. Launch server by typing **ruby app.rb** into the terminal and going to **localhost:4567** in your browser.
7. You can now begin adding and organizing your recipes!

###Technologies Used
This app was built using Ruby, Sinatra, SQL, and ActiveRecord.

###Legal

Copyright (c) 2015 Alexa Zeazas & Jennifer Bell

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
