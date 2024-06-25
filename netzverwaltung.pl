#!/usr/bin/env perl
use Mojolicious::Lite -signatures;

my $config = plugin 'NotYAMLConfig';
plugin 'TagHelpers';

get '/' => 'welcome';

app->start;
__DATA__

@@ welcome.html.ep
% layout 'default';
% title 'Willkommen';
%= t h1 => 'Herzlich Willkommen bei der Netzverwaltung'
%= t p => begin
    Sie sind nicht berechtigt, Verwaltungsinhalte abzurufen.
% end

@@ layouts/default.html.ep
<!doctype html>
<html lang="de">
  <head><title><%= title %> - Die Netzverwaltung</title></head>
  <body>
    %= t main => content
    <hr>
    <footer><p>&copy; Die Netzverwaltung</p></footer>
  </body>
</html>
