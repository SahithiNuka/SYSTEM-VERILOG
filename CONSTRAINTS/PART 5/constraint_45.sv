

class constraint_45;
	rand bit[7:0]a;
	constraint c1{a%3==0;}
	constraint c2{$countones(a) == 0 || $countones(a) == 2 || $countones(a) == 4 || $countones(a) == 4 || $countones(a) == 6 || $countones(a) == 8;}
endclass
constraint_45 c1;
module test();
	initial
		begin
			repeat(5)
			begin
				c1=new;
				assert(c1.randomize());
				$display("a: %b",c1.a);
			end
		end
endmodule
