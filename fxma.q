syms:.z.x;
{[x]
	file:hsym`$x,".csv";
	newfile:`$x,"_processed";
	tab:("DFF";enlist csv)0:file;
	tab:`date`open`close xcol tab;
	tab:update ma:30 mavg close from tab where i>30;
	tab:update greenbar:1b from tab where i>30,close>open;
	tab:update long:-1, short:0 from tab where not null ma,greenbar, ma within (min(prev close;open);close);
	tab:update short:1,long:0 from tab where not null ma,0b=greenbar, ma within (close;max(prev close;open));
	tab:update long:0Nj, short:0Nj from tab where not null long, (long=prev long) or short=prev short;
	tab:update profit:close*long+short from tab where not null long, 0<>long+short;
	tab:update profit:profit+prev profit from tab where not null profit;
	tab:update balance:sums profit from tab where not null profit;
	newfile set tab;
	save hsym`$string[newfile],".csv";
	0N!"Data for ",x," successfully saved as ",string[newfile],".csv";
		}each syms