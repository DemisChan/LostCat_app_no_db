# Lost Cats app

## 1. Describe the Problem

# Stage One

> As a user

* So that I can find my cat that I lost

* I want to post an advert for a lost cat with some description of the cat, and my telephone number so people can contact me

## Create / POST

> As a user

* So that I can help others find their lost cats
* I want to see all of the lost cat adverts

## Read / GET

# Stage Two

> As a user

* So that I can focus on the yet not-found cats
* I want to delete adverts for cats that have been found

# Delete / DELETE

> As a user
* So that I can update lost cat adverts with potential sightings
* I want to update adverts

# Update / PATCH

# Stage Three

> As a user
* So that I can protect my cat adverts from weird people
* I want to give a password with each advert, and only people who give the right password can update or delete that advert

# Only DO the method if password parameter matches password given for that entry

## 2. Design the Interface

_This is the fun part! Use excalidraw.com or a similar tool to design some
wireframes (rough sketches of the user interface). Include interactions and
transitions between pages — those are the most critical part._

![Lost cats feature](./lost_cats_design.png)

## 3. Design the Data Model Classes

_These classes should store and manage the data the server will hold._
_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class CatsList
  def initialize
  end

  def report
    # Returns a list of instances of Cat
  end

  # Create
  def add(cat) # advert is an instance of Cat
    # No return value
  end

  # Read
  def get(index) # index is a number
    # Returns an advert, the advert at the given index
  def

  # Update
  def update(index, updated_cat) # index is a number, udpated_cat is instance of Cat
    # Updates the advert at index to be the update_cat
    # No return value
  end

  # Delete
  def remove(index) # index is a number
    # Deletes the advert at index
  end
end

class Cat
  def initialize(name, breed, telephone, password)
    # All contents are strings
  end

  def name
    return @name
  end

  def tel
    return @tel
  end

  def breed
    return @breed
  end
end
```

_Check them against these rules:_

> 1. Do they represent a collection or collections of data?
> 2. Does each collection have relevant methods to:
>    1. List out all items in the resource
>    2. Create an item (C)
>    3. Get a single item (R)
>    4. Update an item (U)
>    5. Delete an item (D)
> 3. Is it possible to construct a realistic data model just by using simple
>    data types? (strings, integers, booleans)
> 


> # In this case, a string and a list of strings enter the data model.
> # A list isn't a simple enough data type.
> ```
> 
> The reason for this is that we will be moving onto databases. Databases
> typically can only store simple data types, so we're keeping that discipline
> for now!
> 
> Some of these rules will be relaxed later but will keep you safe for now.

## 4. Design the Web API (Requests)

_Design requests that perform each of the key operations on your data model._
_Map them to the methods or code snippets in your data model._

```ruby

# EXAMPLE

# INDEX
# Request: GET /lostcats
list.report

# CREATE
# POST /lostcats
# With data: { name: "Sam", breed: "Tabby", tel: "07102203265", pass:"lkjfd87"}
sam = Cat.new(name, breed, tel, pass)
list.add(sam)

# READ
# GET /lostcats/:index
list.get(index)

# UPDATE
# PATCH /lostcats/:index
# With data: { title: "Hello", contents: "A good diary" }
sam = Cat.new(name, breed, tel, pass)
sam.update(name, breed, tel, pass)

# DELETE
# DELETE /lostcats/:index
list.remove(index)

```

> Remember:

> GET: Getting a single item or a list of items

> POST: Adding an item

> PATCH: Updating an item

> DELETE: Deleting an item

## 5. Create Examples of User Interactions

_Create examples of user interactions and expectations._

```ruby
# As you learn the testing tools you might start writing with realistic test
# code here, but at the start it's OK if it's just English or made up code.

# View no entries
visit "/lostcats"
# User sees: You have no lost cats

# Add an advert
visit "/lostcats"
click link "Add Cat"
enter "Sam" into "Name" field
enter "Normal cat" into "Breed" field
enter "0758371 1228 100" into "Tel" field
enter "oasudoadh" into "Pass" field
click button "Submit"
# User sees in the Cats list:
# Sam
# Normal cat
# 0758371 1228 100

# Multiple entries
visit "/diary"
click link "Add Cat"
enter "A beautiful day" into "Title" field
enter "I had a very nice day it's true." into "Contents" field
click button "Post"
click link "Add Entry"
enter "A bad day" into "Title" field
enter "I had a very bad day." into "Contents" field
click button "Post"
# User sees in the diary list:
# A bad day
# I had a very bad day.
# A beautiful day
# I had a very nice day it's true.

# Get single

# Update 

# Delete
```

## 6. Test-Drive the Behaviour

_Follow this cycle:_

1. Add a feature test in `/spec/feature/` (RED)
2. Implement the behaviour in `app.rb`
3. Does it pass without data model changes? (GREEN) Then skip to step 6.
4. Otherwise, add a unit test for the data model to `/spec/unit` (RED)
5. Implement the behaviour in your data model class. (GREEN)
6. Apply any refactors to improve the structure of the code. (REFACTOR)  
   Run `rubocop` as part of this.
7. Go back to step 1.


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-starter-level-two&prefill_File=recipe/recipe.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-starter-level-two&prefill_File=recipe/recipe.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-starter-level-two&prefill_File=recipe/recipe.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-starter-level-two&prefill_File=recipe/recipe.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-starter-level-two&prefill_File=recipe/recipe.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
