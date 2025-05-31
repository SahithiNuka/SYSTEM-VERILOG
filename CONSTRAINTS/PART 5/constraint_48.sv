

class constraint_48;
	rand int da[];
	constraint c1{da.size == 6;}
	constraint c2{foreach(da[i])
			da[i] inside {[10:20]};}
	constraint c3{da.sum() == 100;}
endclass
constraint_48 c1;
module test();
	initial
		begin
			repeat(3)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule
