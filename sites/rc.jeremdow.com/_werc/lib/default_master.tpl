<div id="header">
% cat `{ get_lib_file top_bar.inc }

    <div class="midHeader">
		<div class="left">
    		<h1 class="headerTitle"><a href="/">%($"siteTitle%) <span id="headerSubTitle">%($"siteSubTitle%)</span></a></h1>
		</div>
		<div class="right">
			<form action="http://www.google.com/cse" id="cse-search-box">
  				<div>
    				<input type="hidden" name="cx" value="003190056917202029185:vgjg7tvaiom" />
    				<input type="hidden" name="ie" value="UTF-8" />
    				<input type="text" name="q" size="31" />
    				<input type="submit" name="sa" value="Search" />
  				</div>
			</form>
			<script type="text/javascript" src="http://www.google.com/cse/brand?form=cse-search-box&lang=en"></script>
		</div>
    </div>
    
    <!-- <div class="subHeader"><br></div> -->
</div>

<div class="menu">
% if(! ~ $#handlers_bar_left 0) {
%   for(h in $handlers_bar_left) {
%       run_handler $$h
%   }
    </div>
% }
</div>

<div id="main-copy">

% run_handlers $handlers_body_head

% run_handler $handler_body_main

% run_handlers $handlers_body_foot

</div>

<div id="footer">
% cat `{ get_lib_file footer.inc }
</div>
