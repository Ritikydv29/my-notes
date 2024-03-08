void main()
{
  var list1=[1,2,3,4,5];

  print(list1[4]);
   print(list1);
  list1.add(50); //to add in list
  print(list1);

  // var names=[];
  // names.addAll(list1); // Add full list to another list or end of list
  // names.add("hello"); // can add multiple data type
  // print(names);
  // names.insert(3,"Ritik");// add element to 3 index and shift to right 
  // print(names);
  // names.insertAll(3,list1);// to insert a list in between
  // print(names);
  // list1[2]=400;
  // print(list1);

  list1.replaceRange(0,4,[50,60,80,60]);
  
  print(list1);
  // list1.removeLast();
  // list1.removeAt(0);
  // list1.removeRange(0,4);
  print(list1.isEmpty);
   print(list1);



}