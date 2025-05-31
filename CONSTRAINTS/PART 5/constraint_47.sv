

class constraint_47;
	rand int a;
	constraint c1{a inside {[1:50]};}
	constraint c2{a%2 !=0 && a%3!=0 && a%5!=0;}
endclass
constraint_47 c1;
module test;
	initial 
		begin
			repeat(10)
				begin
					c1=new;
					assert(c1.randomize());
					$display("a: %d",c1.a);
				end
		end
endmodule
