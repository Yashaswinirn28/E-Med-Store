<%
                // using scriptlet
                java.util.Calendar now = new java.util.GregorianCalendar();
                String tod = "";

                if (now.get(now.HOUR_OF_DAY) < 11) {
                    tod = "Good Morning!";
                } else if (now.get(now.HOUR_OF_DAY) < 15) {
                    tod = "Good Afternoon!";
                } else {
                    tod = "Good Evening!";
                }


        %>

<%=tod%>