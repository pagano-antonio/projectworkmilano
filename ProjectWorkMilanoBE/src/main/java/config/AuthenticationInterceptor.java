package config;

import org.springframework.web.servlet.HandlerInterceptor;

import com.model.Employee;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class AuthenticationInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        Employee loggedUser = (Employee) session.getAttribute("utente");

        if (loggedUser == null) {
            // L'utente non è autenticato, reindirizza alla pagina di login
            response.sendRedirect(request.getContextPath() + "/login");
            return false;
        }

        // L'utente è autenticato, consenti la continuazione della richiesta
        
        System.out.println("Sono nell'interceptor, attributo sessione: " + session.getAttribute("utente"));
        
        return true;
    }
}