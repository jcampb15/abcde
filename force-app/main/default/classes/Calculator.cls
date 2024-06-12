public with sharing class Calculator {
    public Calculator() {


    }

    public Integer Add(Integer a, Integer b){
            return a + b;
    }

    public Integer Multiply (Integer a, Integer b){
        Integer c = 0;
        for (int i = 0; i < a; i++){
            c = Add(b, c);
        }

        return c;
    }

    public Integer Divide (Integer a, integer b){
        Integer c = 0;
        Integer divisor = 0;
        if(b == 0){
            return 0;
        }
        while (c < a){
            c = Add(b, c);
            divisor++;
        }

        return divisor;
    }

    public Integer Mod(Integer a, Integer b){
        Integer remainder = a;
        while (remainder > b) {
            remainder = remainder - b;
        }
        return remainder;
    }

    // NOTE TO ETHAN, SKIPPING ELITE CHALLANGES
}