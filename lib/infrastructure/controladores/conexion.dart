import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseCredentials {
  static const String APIURL = 'https://gdbdejegyrhoizsskelb.supabase.co';
  static const String APIKEY =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdkYmRlamVneXJob2l6c3NrZWxiIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzM4Nzg5ODgsImV4cCI6MTk4OTQ1NDk4OH0.twE-ZrxZYJgDz1Y6rmEDkiZ9K2sB65wrYwlCam-oqQM';

  static SupabaseClient supabaseClient = SupabaseClient(APIURL, APIKEY);
}
