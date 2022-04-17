{{-- I would disable this because there is no header in the designs --}}
{{--@include('sections.header')--}}
@include('sections.hero')

<div class="content-wrapper">
  @hasSection('sidebar')
    <aside class="sidebar">
      @yield('sidebar')
    </aside>
  @endif

  <main id="main" class="main">
    @yield('content')
  </main>
</div>

{{-- Same as with header, i would disable this because there is no footer in the designs --}}
{{--@include('sections.footer')--}}
