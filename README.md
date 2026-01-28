# Lists Utility Module (Elixir)

A small, focused Elixir module that provides reusable helper functions for list operations, emphasizing clean, idiomatic functional programming and safe list handling.

This project demonstrates common Elixir practices including pipelines, immutability, and use of core standard library modules.

# Purpose

The goal of this module is to practice and showcase:

Working with lists in Elixir

Writing small, single-responsibility functions

Functional composition and pipelines

Proper use of core list functions and Enum module

Writing readable, maintainable code


# Features

Provides a default equipment list

Retrieves the first item from a list

Removes the first item from a list

Adds items to the end of a list (fast and slow approaches)

Removes an item at a given index

Counts the number of items in a list


# Usage
#### Get default equipment
Lists.get_equipment_list()
####  => ["space Helmet", "space suit", "space boots", "oxygen tank"]

####  Retrieve first item
Lists.get_first_item(["a", "b", "c"])
####  => "a"

#####  Remove first item
Lists.remove_first_item(["a", "b", "c"])
#####  => ["b", "c"]

#####  Add item efficiently
Lists.add_fast(["a", "b"], "c")
#####  => ["a", "b", "c"]

##### Add item in slower way
Lists.add_slow(["a", "b"], "c")
##### => ["a", "b", "c"]

##### Remove item by index
Lists.remove_item(["a", "b", "c"], 1)
##### => ["a", "c"]

##### Count items
Lists.equipment_count(["a", "b", "c"])
#### => 3

Technical Highlights

Immutable data transformations

Clear separation of concerns

Functional pipelines and composition (|>)

Efficient and idiomatic use of core library functions

# Author Notes

This module is part of my Elixir learning journey, focused on writing clear, idiomatic, and reusable code, while strengthening understanding of functional programming and list manipulation in Elixir.