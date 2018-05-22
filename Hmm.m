function [y,y1] = Hmm(x,n1)
n = length(x)-1;
p = zeros(length(x),length(x));
disp(length(x));
for t = 1:n
  p(x(t), x(t + 1)) = p(x(t), x(t + 1)) + 1;
end
for i = 1:length(x)
  p(i, :) = p(i, :) / sum(p(i, :));
end

[y,y1]=hmmgenerate(n1,p,p);

end

