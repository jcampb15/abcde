public with sharing class Car extends Vehicle {
    private Integer SteeringRotation;
    private Integer TireRotation {
        get {}
        set {if(-90 <= value <= 90){
                TireRotation = value;
            } else {
                TireRotation = 0;
            }
            }
     } 
    private Integer Gear {get{}set{}}

    public car(){
        Vehicle v = new Vehicle();
        this.SteeringRotation = 0;
        this.TireRotation = 0;
        v.Media.add(LAND);


    }



    public override void Turn(Integer SteeringTurn, Integer TireTurn){
        this.SteeringRotation += SteeringTurn;
        this.TireRotation += TireTurn;
    }

    public override void Accelerate(Integer s){
        this.Gear = (Integer)Math.ceil(0.4444 * (Math.sqrt(Speed)));
    }

    // public Car() {

    // }


}