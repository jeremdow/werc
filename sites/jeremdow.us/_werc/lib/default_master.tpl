<div id="wrap">
  <div id="header">
%   cat `{ get_lib_file top_bar.inc }

    <div id="search">
      <form action='https://www.google.com/search'>
        <div>
          <input name='q' type='hidden' value='site:jeremdow.us' />
          <input name='q' size='40' type='text' />
          <input name='sa' type='submit' value='Search' />
        </div>
      </form>
    </div>

    <div class="midHeader">
      <h1 class="headerTitle"><a href="/">%($"siteTitle%) <span class="doNotDisplay">- </span><span id="headerSubTitle">%($"siteSubTitle%)</span></a></h1>
    </div>

    <div class="subHeader"><br></div>
  </div>

%   if(! ~ $#handlers_bar_left 0) {
    <nav id="menu">
%     for(h in $handlers_bar_left) {
      <div>
%       run_handler $$h
      </div>
%     }
    </nav>
%   }

  <div id="main-copy">
%   run_handlers $handlers_body_head

%   run_handler $handler_body_main

%   run_handlers $handlers_body_foot

  </div>
</div>

% cat `{ get_lib_file footer.inc }
