# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* journal_title:text number_of_entries:integer time_period:text word_count:integer user_id:text

* post_title:text post_body:text user_id:text journal_id:text


<div class ="nav">
  <ul>
<% if @current_user %>
<li><%= link_to "Log Out", "/logout", method: :delete %></li>
<li><%= link_to @current_user.firstname, user_path(@current_user) %></li>
<li><%= link_to edit_user_path(@current_user) %></li>
<% else %>
<%= link_to "Login", "/login" %>
<%= link_to "Sign Up", "/users/new" %>
<%end  %>
</ul>
</div>
