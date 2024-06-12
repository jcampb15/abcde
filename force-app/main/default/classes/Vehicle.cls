
public with sharing class Vehicle {
    public enum Medium {LAND, AIR, WATER}
    public Vehicle() {get; set;}
    public Vehicle(Integer Speed, Integer Occupants, String Name, Integer Capacity){
        this.Speed = Speed;
        this.Occupants = Occupants;
        this.Name = Name;
        this.Capacity = Capacity;
    }
    public Medium() {get; set;}

    private Integer Speed;
    private String Name;
    public  Integer Occupants;
    public final Integer Capacity;
    protected List<Medium> Media;

    public void Accelerate(Integer s){
        this.Speed += s;
    }

    public abstract void Turn(){}

    public void ToString(){
        System.debug('Speed : ' +  this.Speed);
        System.debug(this.Media);
        System.debug('Name: ' + this.Name);
        System.debug('Number of Occupants: ' + this.Occupants);
    }

}