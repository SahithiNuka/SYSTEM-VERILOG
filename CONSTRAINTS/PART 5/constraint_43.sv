

class constraint_43;
	rand bit[7:0] da[];
	constraint c1{da.size == 5;}
	constraint c2{foreach(da[i])
			da[i] == (i+1)**2;}
endclass
constraint_43 c1;
module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule
