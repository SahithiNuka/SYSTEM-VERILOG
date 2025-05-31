

class constraint_46;
	rand bit[4:0]a;
	constraint c1{a inside {[0:31]};}
	constraint c2{(a%4 == 0) && (a%6 != 0);}
	constraint c3{unique {a};}
endclass
constraint_46 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("a: %d",c1.a);
				end
		end
endmodule
