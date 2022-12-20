# ActiveRecord Domain-Driven-Attribute Example

An example on how to use [ActiveRecord::Attributes::ClassMethods](https://api.rubyonrails.org/classes/ActiveRecord/Attributes/ClassMethods.html) to map domain-object to common database type. For example, if we have a class with an URI attribute, it can be stored as a string or text in database, and converted back to URI object when loaded - so we can use all URI instance methods on that attribute.

Look at [script.rb](script.rb)

How to run the script:
- `bundle install` unless if `activerecord` and `pg` gems already installed
- edit [database.yaml](database.yaml), create the database if not exist
- `ruby script.rb`
