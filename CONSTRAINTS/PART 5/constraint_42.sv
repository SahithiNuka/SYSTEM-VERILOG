

class constraint_42;
	rand bit[3:0] da[];
	constraint c1{da.size == 5;}
	constraint c2{foreach(da[i])
			da[i] == 5 - i;}
endclass
constraint_42 c1;
module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule
