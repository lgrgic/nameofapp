$(document).ready(function(){
    $(".notice").delay(5000).fadeOut(1500);
    });
    $(document).ready(function(){
        $(".alert").delay(5000).fadeOut(1500);
        <% if notice %>
            <p id="notice" class="alert alert-success"><%= notice %></p>
        <% end %>
        <% if alert %>
            <p id="notice" class="alert alert-info"><%= alert %></p>
        <% end %>});
