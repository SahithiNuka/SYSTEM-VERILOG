

class constraint_34;
	rand int date,month,year;
	constraint c1{month inside {[1:12]};}
	constraint c2{ if(month inside {1,3,5,7,8,10,12})
				date inside {[1:32]};
			else if(month == 2)
				{if((year%4 == 0 && year%100 != 0) || (year % 400 == 0))
					date inside {[1:30]};
				 else
					date inside {[1:28]}; }
			else 
				date inside {[1:30]}; }
	constraint c3{year inside {[1000:3000]};}
endclass
constraint_34 c1;
module test();
	initial 
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("%d:%d:%d",c1.date,c1.month,c1.year);
				end
		end
endmodule
