class TodoModel {
  int? _id;
  String? _title;
  String? _description;
  String? _date;
  int? _priority;

  TodoModel(this._title, this._date, this._priority, [this._description]);
  TodoModel.withId(this._id, this._title, this._date, this._priority,
      [this._description]);

  int? get id => _id;
  String? get title => _title;
  String? get description => _description;
  int? get priority => _priority;
  String? get date => _date;

  set title(newTitle) {
    if (newTitle.length <= 100) {
      _title = newTitle;
    }
  }

  set description(newDescription) {
    if (newDescription.length <= 100) {
      _description = newDescription;
    }
  }

  set date(newDate) {
    _date = newDate;
  }

  set priority(newPriority) {
    _priority = newPriority;
  }
}
