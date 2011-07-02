<div id="header">
% cat `{ get_lib_file top_bar.inc }

  <div id="search">
    <script type="text/javascript">
      function googleSiteSearch() {
        var searchSite = " jeremdow.com";
        var searchString = document.searchform.searchstr.value;
        if (searchString != "") {
          searchString = searchString.replace(/ /g,"+");
          window.location = 'http://www.google.com/search?q=site%3a' + searchSite + '+' + searchString;
        }
        return false;
      }
    </script>
    <form name=searchform onsubmit="return false;">
      <input type="text" name="searchstr" size=40> <input type="submit" value="Search" onclick="googleSiteSearch();">
    </form>
  </div>

  <div class="midHeader">
    <h1 class="headerTitle"><a href="/">%($"siteTitle%) <span id="headerSubTitle">%($"siteSubTitle%)</span></a></h1>
  </div>

  <div class="subHeader"><br></div>
</div>

% if(! ~ $#handlers_bar_left 0) {
    <div id="menu">
%   for(h in $handlers_bar_left) {
        <div>
%       run_handler $$h
        </div>
%   }
    </div>
% }

<div id="main-copy">
% run_handlers $handlers_body_head

% run_handler $handler_body_main

% run_handlers $handlers_body_foot

</div>

<div id="footer">
% cat `{ get_lib_file footer.inc }
</div>
