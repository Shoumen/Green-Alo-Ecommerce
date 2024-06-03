@foreach($allChild as $row)
    <option value="{{ $row->id }}" style="color:blue;">{{ $row->childcategory_name }}</option>
@endforeach