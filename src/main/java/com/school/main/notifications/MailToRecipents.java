package com.school.main.notifications;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

//import org.springframework.ui.Model;
import com.sun.mail.util.MailSSLSocketFactory;

public class MailToRecipents {

	public static String sendEmail() throws AddressException, MessagingException, IOException {
		try {
			sendmail();
		} catch (GeneralSecurityException e) {
			e.printStackTrace();
		}
		return "successful";
	}

	private static void sendmail() throws AddressException, MessagingException, IOException, GeneralSecurityException {
		Properties props = new Properties();

		// to ignore cert issue
		MailSSLSocketFactory socketFactory = new MailSSLSocketFactory();
		socketFactory.setTrustAllHosts(true);
		props.put("mail.smtp.ssl.socketFactory", socketFactory);

		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("programmingcafe2020@gmail.com", "Test@123");
			}
		});

		Message msg = new MimeMessage(session);
		msg.setFrom(new InternetAddress("programmingcafe2020@gmail.com", false));

		msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse("ramyanr420@gmail.com"));
		msg.setSubject("Tutorials point email");
		msg.setContent("Tutorials point email", "text/html");
		msg.setSentDate(new Date());

		MimeBodyPart messageBodyPart = new MimeBodyPart();
		messageBodyPart.setContent("Tutorials point email", "text/html");

		Multipart multipart = new MimeMultipart();
		multipart.addBodyPart(messageBodyPart);
//		MimeBodyPart attachPart = new MimeBodyPart();
//
//		attachPart.attachFile("/var/tmp/image19.png");
//		multipart.addBodyPart(attachPart);
		msg.setContent(multipart);
		Transport.send(msg);
	}

}
