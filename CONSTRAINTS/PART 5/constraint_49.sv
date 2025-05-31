

class constraint_49;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:20]};}
	constraint c3{da.sum()%2 == 0;}
endclass
constraint_49 c1;
module test();
	initial 
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule
