@extends('backend.layouts.master')

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Manage Customers</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
            <li class="breadcrumb-item active">Customers</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">

      <!-- Main row -->
      <div class="row">
        <!-- Left col -->
        <section class="col-md-12">
          <!-- Custom tabs (Charts with tabs)-->
          <div class="card">
            <div class="card-header">
              <h3>Customers List
                <a href="{{ route('customers.add') }}" class="btn btn-success float-right"> <i class="fa fa-plus-circle"></i> Add Customer</a>
              </h3>
            </div><!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-hover">
                  <thead>
                    <tr>
                      <th>SL.</th>
                      <th>Name</th>
                      <th>Mobile No</th>
                      <th>Email</th>
                      <th>Address</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach($allData as $customer)
                    <tr>
                      <td>{{ $loop->index + 1 }}</td>
                      <td>{{ $customer->name }}</td>
                      <td>{{ $customer->mobile_no }}</td>
                      <td>{{ $customer->email }}</td>
                      <td>{{ $customer->address }}</td>
                      <td>
                        <a href="{{ route('customers.edit',$customer->id) }}" title="Edit" class="btn btn-sm btn-primary"> <i class="fa fa-edit"></i> </a>
                        @php
                          $customer_check = App\Model\Payment::where('customer_id',$customer->id)->first();
                        @endphp
                        @if($customer_check == null)
                        <a href="#deleteModal{{ $customer->id }}" data-toggle="modal" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>
                        @endif

                      <div class="modal fade" id="deleteModal{{ $customer->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title" id="exampleModalLabel">Are you sure to Delete</h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">
                              <form action="{!! route('customers.delete',$customer->id) !!}" method="post">
                                  {{ csrf_field() }}
                                  <button type="submit" class="btn btn-lg btn-danger">Yes</button>
                              </form>

                            </div>
                            <div class="modal-footer">

                              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                          </div>
                        </div>
                      </div>

                      </td>
                    </tr>
                    @endforeach
                  </tbody>
              </table>
            </div><!-- /.card-body -->
          </div>
          <!-- /.card -->

          <!-- DIRECT CHAT -->


        </section>
        <!-- /.Left col -->

        <!-- right col -->
      </div>
      <!-- /.row (main row) -->
    </div><!-- /.container-fluid -->
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->
@endsection
