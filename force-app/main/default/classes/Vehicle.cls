
public with sharing virtual class Vehicle {
    public enum Medium {LAND, AIR, WATER}
    

    private static Integer speedValue = 0;
    private static Integer occupantsValue = 0;
    private static String nameValue = '';
    private static Integer capacityValue = 1;
    private static List<Medium> mediaValue = new List<Medium>();
    protected List<Medium> Media;

    //FOR CHALLANGE 2, CHALLANGE 4 CHANGES THIS
    public Vehicle() {
        // this.Speed = 0;
        // this.Occupants = 0;
        // this.Name = '';
        // this.Capacity = 1;
        // this.Media = new List<Medium>();
        this(speedValue, occupantsValue, nameValue, capacityValue, mediaValue);

    }
    
    public Vehicle(Integer Speed, Integer Occupants, String Name, Integer Capacity, List<Medium> Media){
        this.Speed = Speed;
        this.Occupants = Occupants;
        this.Name = Name;
        this.Capacity = Capacity;
        this.Media = Media;
    }

    

    private Integer Speed{
        get{
            return Speed;
        } set{
        if(value < 0){
            Speed= 1;
        } else {
            Speed = value;
        }
    }}
    
    private String Name {get;set;}
    
    
    public Integer Occupants{
        get{
            return Occupants;
        } set{
        if(value < 0){
            Occupants= 1;
        } else {
            Occupants = value;
        }
    }}


    public final Integer Capacity{
        get{
            return Capacity;
        } set{
        if(value < 1){
            Capacity = 1;
        } else {
            Capacity = value;
        }
    }}




    public virtual void Accelerate(Integer s){
        this.Speed += s;
        //test123456
    }

    public virtual void Turn(){}

    public override String ToString(){
        System.debug('Speed : ' +  this.Speed);
        System.debug(this.Media);
        System.debug('Name: ' + this.Name);
        System.debug('Number of Occupants: ' + this.Occupants);
        String vivv = 'Speed : ' +  this.Speed + this.Media + 'Name: ' + this.Name + 'Number of Occupants: ' + this.Occupants;
        return vivv;
        
    }



}