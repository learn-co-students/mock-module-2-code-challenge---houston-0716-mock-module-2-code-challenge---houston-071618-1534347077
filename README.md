
We’ve started some of the work for you but we still need your help to get our site working! Here are the deliverables:

Build out the associations for the models we’ve created. You may need to change the schema in order to get the rake db:seed command to work.

On the index page for both Dogs and Employees, a user should be able to click a name and the site should take them to the corresponding show page.

#Dog index page all dogs click on each to take you to the single dog show page

The Employee show page should list all of their attributes (bonus if you could get a picture to show up)
#A single employee show page should list all attributes

The Dog show page should have their name, breed, age, and the Dunder Mifflin Employees associated with that dog.
#A single dog show page should list their name, etc. and the dog.owner_name

As a user I should be able to create and edit an Employee and be able to select 1 dog from a list of existing dogs.
#add a new employee and select 1 dog from the form list

No one at Dunder Mifflin can have the same alias and/or job title (Dwight made up that rule!)
# custom validates uniqueness on name and job title
