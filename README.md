Create new Rails app with postgresql:

`rails new <project_name> -d=postgresql`

# ActiveRecord Part Two

We have some great enumerables in Ruby that can help us manipulate data, for example: 
```
    Cat.all.select do |cat|
        cat.fluffy
    end
```

but when we're grabbing this data from the database, what's actually happening? 
We're grabbing *all* the records from the `cats` table (db calls are expensive), then iterate through this array (also expensive) to get our results.

Why not use the tools at our disposle to make this a much more effecient process?  Let's use ActiveRecord to retrieve _only_ the records from the db that fit our conditions! Yay ActiveRecord!

Can use `rails dbconsole` to use SQL queries against our db. Helpful to see exactly what is coming back from the db with your ActiveRecord query (take the resulting SQL and paste it in rails dbconsole)

In our Cat Model

*Cat.names
    Returns an array of all the cats' names, no dups

* Cat.fluffies
    Returns all the fluffy cats

* Cat.olds
    Returns all the cats over age 8

* Cat.kittens
    Returns all the cats under age 1

* Cat.middle_aged
    Returns all the cats between ages 1 and 8 (including 1 and 8)

* Cat.youngest_cats(num)
    Returns the youngest cat

* Cat.oldest_cats(num)
    Returns num amount of the oldest cats

* Cat.age_breakdown
    Returns a hash where the key is the age of a cat and the value is the number of cats with that age.

_______

* Cat.youngest_owner
    Returns the cat with the youngest owner


On Event model

* Event#attending_cats
    Returns a list of the cats attending a specific event




1. What does the `!` at the end of an activerecord method do?
1. What's the difference between .joins


https://guides.rubyonrails.org/active_record_querying.html

