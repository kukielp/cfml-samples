component name="Person" {
    this.age = 25;
    this.favColour = 'Blue';

    public string function getFullName(
        required string firstName,
        required string lastName
    ){
        var fullName = arguments.firstName & ' ' & arguments.lastName;
        return fullName;
    }

    public string function getGreeting(
        required string firstName,
        required string lastName
    ){
        var fullName = getFullName( argumentCollection = arguments );
        var greeting = "Hello, " & fullName;

        return greeting;
    }

}