class  extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<> {
  @override
  Widget build(BuildContext context) {
  void _addPizza() {
    final pizzaToppingTextField = TextEditingController();
    int _sizeSelected = 1;
    showDialog( context: context,
    builder: (context) {
    return Dialog( child: SizedBox( height: 200,
    child:  Column( children: <Widget>[
    Text('Toppings:', style: Theme.of(context).textTheme.headline4, ),
  TextField( controller: pizzaToppingTextField,
  style: Theme.of(context).textTheme.headline4,
  ),
  DropdownButton( style: Theme.of(context).textTheme.headline4,
  value: _sizeSelected,
  items:[ DropdownMenuItem(child: Text("Small"), value: 0),
  DropdownMenuItem(child: Text("Medium"), value: 1),
  DropdownMenuItem(child: Text("Large"), value: 2),
  DropdownMenuItem(child: Text("X-Lareg"), value: 3) ],
  onChanged: (value) {
  setState(() {
    _sizeSelected = value;
  });
  }),
ElevatedButton(
child: Text('Add Pizza'),
onPressed: () {
print("Adding a pizza");
setState(() {
Pizza newPizza = new Pizza(pizzaToppingTextField.text, _sizeSelected);
pizzasInOrder.add(newPizza);
Navigator.pop(context);
});
},
),
],
),
)
);
}
);
}
    return Container();
  }
}
