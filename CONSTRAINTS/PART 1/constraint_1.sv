

class constraint_1;
	rand bit[4:0]a;
	constraint a_range{a % 2 == 1; a inside {[10:30]};}
endclass

constraint_1 c1;

module test;
	initial
		begin
			repeat(5)
				begin
					c1 = new();
					assert(c1.randomize());
					$display("a=%d",c1.a);
				end
		end
endmodule 
