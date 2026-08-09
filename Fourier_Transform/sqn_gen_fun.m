function [v_n,signal_title] = sqn_gen_fun(type_of_sqn, n, length_n, M, N, A, a)
switch(type_of_sqn)
    case 1
        for ii = 1:1:length_n
        if(n(ii)==0)
            v_n(ii) = 1;
        else
            v_n(ii) = 0;
        end
        end
        signal_title = 'Unit Impulse (Delta) Signal';
    case 2
    for ii = 1:1:length_n
        if(n(ii)>=0)
            v_n(ii) = 1;
        else
            v_n(ii) = 0;
        end
    end
    signal_title = 'Unit Step Signal';
    case 3
    for ii = 1:1:length_n
        if(n(ii)>=0)
            v_n(ii) = n(ii);
        else
            v_n(ii) = 0;
        end
    end
    signal_title = 'Unit Ramp Signal';
    case 4
    for ii = 1:1:length_n
        if(n(ii)>=0)
            v_n(ii) = a^n(ii);
        else
            v_n(ii) = 0;
        end
    end
    signal_title ='Exponential Signal';
    case 5
    for ii = 1:1:length_n
        if(n(ii)<=0)
            v_n(ii) = (1/a)^n(ii);
        else
            v_n(ii) = 0;
        end
    end
    signal_title ='Exponential Signal';
    case 6
    for ii = 1:1:length_n
        if(n(ii)>=0)
            v_n(ii) = a^n(ii);
        else
            v_n(ii) = (a)^(-n(ii));
        end
    end
    signal_title ='Exponential Signal';
    case 7
    for ii = 1:1:length_n
        if(n(ii)<0)
            v_n(ii) = -1;
        elseif(n(ii)>0)
            v_n(ii) = 1;
        else
            v_n(ii) = 0;
        end
    end
    signal_title = 'Signum Function';
    case 8
    A=1;
    M=1;
    N=30;
    v_n=A*cos(2*pi*(M/N)*n);
    signal_title = 'Cosine Signal';
    case 9
    A=1;
    M=1;
    N=30;
    v_n=A*sin(2*pi*(M/N)*n);
    signal_title = 'Sine Signal';
    case 10
    M=1;
    N=30;
    for ii = 1:1:length_n
        if(n(ii)~=0)
            v_n=sin(2*pi*(M/N)*n)...
                ./(2*pi*(M/N)*n);
        else
            v_n = 1;
        end
    end
    signal_title = 'sinc function';
    case 11
    for ii = 1:1:length_n
        if(n(ii)<-20)
            v_n(ii) = 0;
        elseif(n(ii)>20)
            v_n(ii) = 0;
        else
            v_n(ii) = 1;
        end
    end
    signal_title = 'Rectangular Signal';
end
end

