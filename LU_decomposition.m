function [L, U] = LU_decomposition(A)

    [n,~] = size(A);
    U = zeros(n,n);
    L = diag(ones(n,1));
    
    for k=1:n
        piv = A(k,k);
        for i=k+1:n
            L(i,k) = A(i,k) / piv;
            U(k,i) = A(k,i);
        end
        for i=k+1:n
            for j=k+1:n
                A(i,j) = A(i,j) - L(i,k)*U(k,j);
            end
        end
    end

end